package com.example.tingle.fanMeeting.controller;

import com.example.tingle.fanMeeting.dto.request.CreateFanMeetingRequest;
import com.example.tingle.fanMeeting.dto.response.GetFanMeetingInfoResponse;
import com.example.tingle.fanMeeting.entity.FanMeeting;
import com.example.tingle.fanMeeting.entity.FanMeetingType;
import com.example.tingle.fanMeeting.service.FanMeetingService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/fanMeeting")
@RequiredArgsConstructor
public class FanMeetingController {
    private final FanMeetingService fanMeetingService;

    @GetMapping("/types")
    public List<FanMeetingType> getFanMeetingTypes() {
        System.out.println("getFanMeetingTypes");
        return fanMeetingService.getFanMeetingTypes();

    }

    @PostMapping("/")
    public FanMeeting createFanMeeting(@RequestBody CreateFanMeetingRequest request) {
        System.out.println("makeFanMeeting");
        return fanMeetingService.createFanMeeting(request);
    }

    @GetMapping("/info/{starName}")
    public GetFanMeetingInfoResponse getFanMeetingInfo(@PathVariable String starName) {
        System.out.println("getFanMeetingInfo");
        return fanMeetingService.getFanMeetingInfo(starName);
    }


}