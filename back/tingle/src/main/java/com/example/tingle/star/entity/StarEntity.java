package com.example.tingle.star.entity;

import com.example.tingle.follow.entity.FollowEntity;
import com.example.tingle.store.entity.OrderEntity;
import com.example.tingle.user.entity.Role;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity(name = "stars")
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class StarEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true)
    private String username;
    private String password;

    private String picture;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Role role;

    // OAuth2 로그인 때 구분한 Provider
    private String provider;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private int category;

    // Order된 목록 추가
//    이건 필요 없지 않을까??
//    @JsonManagedReference
    @OneToMany
//    @JsonIgnore
    @JoinColumn(name = "orders", nullable = true, foreignKey = @ForeignKey(ConstraintMode.NO_CONSTRAINT))
    private List<OrderEntity> orderEntities;


    public StarEntity update(String name, String picture) {
        this.username = name;
        this.picture = picture;
        return this;
    }

    public String getRoleKey() {
        return this.role.getKey();
    }

    public void addOrderEntity(OrderEntity orderEntity) {
        if (orderEntities == null) {
            orderEntities = new ArrayList<>();
        }
        
        orderEntities.add(orderEntity);
    }

    @OneToMany(mappedBy = "starEntity")
    private Set<FollowEntity> followerUsers= new HashSet<>();

}