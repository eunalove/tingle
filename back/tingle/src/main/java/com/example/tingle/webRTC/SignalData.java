package com.example.tingle.webRTC;

import lombok.*;

@Data
@Builder
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class SignalData {
    private String sender;
    private String data;
    private String signalType;
    private Object iceCandidate;
    private Object sdp;
}