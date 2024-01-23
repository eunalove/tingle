package com.example.tingle.user.service;

import com.example.tingle.user.dto.JoinDto;
import com.example.tingle.user.entity.Role;
import com.example.tingle.user.entity.StarEntity;
import com.example.tingle.user.repository.StarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class JoinService {

    @Autowired
    private StarRepository starRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    public void joinProcess(JoinDto joinDTO) {

        //db에 이미 동일한 이름을 가진 회원이 존재하는가?
        boolean isUser = starRepository.existsByUsername(joinDTO.getUsername());
        if (isUser) {
            System.out.println("이미 유저가 존재합니다");
            return ;
        }

        StarEntity star = StarEntity.builder()
                .username(joinDTO.getUsername())
                .password(bCryptPasswordEncoder.encode(joinDTO.getPassword()))
                .email(joinDTO.getEmail())
                .role(Role.STAR)
                .build();
        System.out.println("star  " + star.getEmail());
        System.out.println("star  " + star.getUsername());
        System.out.println("star  " + star.getPassword());

        starRepository.save(star);
    }
}
