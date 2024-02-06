import { ref, computed } from 'vue'
import { defineStore } from 'pinia'
import { useRouter } from 'vue-router'
import axios from 'axios'

import type { SignUp, StarState, FanState } from '@/common/types/index'


// 세트로 id 이름 사진 그정도 저장 해두기?


export const useUserStore = defineStore('user', () => {

  const router = useRouter()

  const API_URL = 'http://localhost:8080'

  const fanState = ref<FanState | null>(null)
  const starState = ref<StarState | null>(null)
  const isStar = ref(false)
  const isLogin = computed(() => {
    if (fanState.value === null && starState.value === null) {
      return false
    } else {
      return true
    }
  })

  const isSidebarOpen = ref(true)

  const starInfo = ref<StarLogininfo | null>(null);

  const starId = ref<number>();
  const signUp = async function (payload: SignUp): Promise<void> {
    const { username, password, email } = payload;

    try {
      await axios.post(`${API_URL}/users/new`, {
        username,
        password,
        email
      });
      window.alert('회원가입완료');
      // username, password 받아서 바로 로그인 하기
    } catch (error) {
      console.error(error);
    }
  };



  const logOut = async function (): Promise<void> {
    try {
      const response = await axios.post(`${API_URL}/users/logout`, {
      });
      console.log(response);
      window.alert('로그아웃!');
      router.push({ name: 'home' })
    } catch (error) {
      console.error(error);
    }
  };
  return {
    API_URL,
    signUp, logOut, starState, fanState,
    //
    isLogin, isStar,
    //
    isSidebarOpen, starId
  }
}, { persist: true })
