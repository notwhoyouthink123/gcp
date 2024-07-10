#import <Foundation/Foundation.h>

%hook YTIQoeHotConfig

- (BOOL)earlyConstruction {
    return NO;
}

- (BOOL)hasEarlyConstruction {
    return NO;
}

- (BOOL)playerServiceFailureLogging {
    return NO;
}

- (BOOL)hasPlayerServiceFailureLogging {
    return NO;
}


- (BOOL)hasURL {
    return NO;
}

- (BOOL)hasIosConfig {
    return NO;
}

- (int)clockStrategy {
    return 0;
}

- (BOOL)hasClockStrategy {
    return NO;
}

- (BOOL)usePost {
    return NO;
}

- (BOOL)hasUsePost {
    return NO;
}

- (int)flushInterval {
    return 0;
}

- (BOOL)hasFlushInterval {
    return NO;
}

- (BOOL)requestLogging {
    return NO;
}

- (BOOL)hasRequestLogging {
    return NO;
}

- (NSString *)requestLoggingCpnRegex {
    return nil;
}

- (BOOL)hasRequestLoggingCpnRegex {
    return NO;
}

- (BOOL)highResolutionRequestLogging {
    return NO;
}

- (BOOL)hasHighResolutionRequestLogging {
    return NO;
}

- (NSString *)highResolutionRequestLoggingCpnRegex {
    return nil;
}

- (BOOL)hasHighResolutionRequestLoggingCpnRegex {
    return NO;
}

- (BOOL)newEndToEndLatencyFormat {
    return NO;
}

- (BOOL)hasNewEndToEndLatencyFormat {
    return NO;
}

- (long long)highResolutionReportingInterval {
    return 0;
}

- (BOOL)hasHighResolutionReportingInterval {
    return NO;
}

- (BOOL)newBandwidthReporting {
    return NO;
}

- (BOOL)hasNewBandwidthReporting {
    return NO;
}

- (int)minBandwidthMsForUpload {
    return 0;
}

- (BOOL)hasMinBandwidthMsForUpload {
    return NO;
}

- (int)minBandwidthBytesForUpload {
    return 0;
}

- (BOOL)hasMinBandwidthBytesForUpload {
    return NO;
}

- (BOOL)resetBandwidthAccumulators {
    return NO;
}

- (BOOL)hasResetBandwidthAccumulators {
    return NO;
}

- (BOOL)logCarrier {
    return NO;
}

- (BOOL)hasLogCarrier {
    return NO;
}

- (BOOL)logPreviousManualQualitySelection {
    return NO;
}

- (BOOL)hasLogPreviousManualQualitySelection {
    return NO;
}

- (BOOL)reportRebufferObservations {
    return NO;
}

- (BOOL)hasReportRebufferObservations {
    return NO;
}

- (BOOL)reportHpn {
    return NO;
}

- (BOOL)hasReportHpn {
    return NO;
}

- (int)rebufferReportIntervalSecs {
    return 0;
}

- (BOOL)hasRebufferReportIntervalSecs {
    return NO;
}

- (float)rebufferSamplingRate {
    return 0.0;
}

- (BOOL)hasRebufferSamplingRate {
    return NO;
}

- (int)rebufferCountPerReportThreshold {
    return 0;
}

- (BOOL)hasRebufferCountPerReportThreshold {
    return NO;
}

- (float)rebufferRatePerPlaybackThreshold {
    return 0.0;
}

- (BOOL)hasRebufferRatePerPlaybackThreshold {
    return NO;
}

- (int)rebufferElapsedTimeSecsThreshold {
    return 0;
}

- (BOOL)hasRebufferElapsedTimeSecsThreshold {
    return NO;
}

- (BOOL)logDeviceDisplayDimensions {
    return NO;
}

- (BOOL)hasLogDeviceDisplayDimensions {
    return NO;
}

- (BOOL)enableHerrevad {
    return NO;
}

- (BOOL)hasEnableHerrevad {
    return NO;
}

- (BOOL)logClientDeviceName {
    return NO;
}

- (BOOL)hasLogClientDeviceName {
    return NO;
}

- (BOOL)asyncInitialMeasurements {
    return NO;
}

- (BOOL)hasAsyncInitialMeasurements {
    return NO;
}

- (BOOL)forcePeriodicFlush {
    return NO;
}

- (BOOL)hasForcePeriodicFlush {
    return NO;
}

- (BOOL)usePostMethod {
    return NO;
}

- (BOOL)hasUsePostMethod {
    return NO;
}

- (BOOL)sendPingOnPlaybackStart {
    return NO;
}

- (BOOL)hasSendPingOnPlaybackStart {
    return NO;
}

- (BOOL)logIsOffline {
    return NO;
}

- (BOOL)hasLogIsOffline {
    return NO;
}

- (BOOL)logPartialPlayback {
    return NO;
}

- (BOOL)hasLogPartialPlayback {
    return NO;
}

- (BOOL)removeExperimentIdsAfterFirstPing {
    return NO;
}

- (BOOL)hasRemoveExperimentIdsAfterFirstPing {
    return NO;
}

- (BOOL)disableEcatcherPings {
    return NO;
}

- (BOOL)hasDisableEcatcherPings {
    return NO;
}

%end

%hook YTIEventLoggingConfig

- (BOOL)enabled {
    return NO;
}

- (BOOL)hasEnabled {
    return NO;
}

- (NSMutableArray *)payloadPoliciesArray {
    return nil;
}

- (unsigned long long)payloadPoliciesArray_Count {
    return 0;
}

- (int)maxAgeHours {
    return 0;
}

- (BOOL)hasMaxAgeHours {
    return NO;
}

- (BOOL)requestRetryEnabled {
    return NO;
}

- (BOOL)hasRequestRetryEnabled {
    return NO;
}

- (BOOL)payloadRetryEnabled {
    return NO;
}

- (BOOL)hasPayloadRetryEnabled {
    return NO;
}


- (BOOL)hasRetryConfig {
    return NO;
}

- (BOOL)serialExecutorEnabled {
    return NO;
}

- (BOOL)hasSerialExecutorEnabled {
    return NO;
}

- (BOOL)iosExperimentalControllerEnabled {
    return NO;
}

- (BOOL)hasIosExperimentalControllerEnabled {
    return NO;
}

- (BOOL)iosNewAccountChangeLoggingEnabled {
    return NO;
}

- (BOOL)hasIosNewAccountChangeLoggingEnabled {
    return NO;
}

- (BOOL)shouldForceSetAllPayloadsToImmediateTier {
    return NO;
}

- (BOOL)hasShouldForceSetAllPayloadsToImmediateTier {
    return NO;
}

- (BOOL)iosMakeRequestWithNilAsSignedOut {
    return NO;
}

- (BOOL)hasIosMakeRequestWithNilAsSignedOut {
    return NO;
}

- (BOOL)iosBackgroundDispatchEnabled {
    return NO;
}

- (BOOL)hasIosBackgroundDispatchEnabled {
    return NO;
}

%end

%hook YTIInteractionLoggingConfig

- (BOOL)enabled {
    return NO;
}

- (void)setEnabled:(BOOL)value {
    %orig(NO); // Disable setting if necessary
}

- (BOOL)hasEnabled {
    return YES;
}

- (NSMutableArray *)payloadPoliciesArray {
    return nil;
}

- (unsigned long long)payloadPoliciesArray_Count {
    return 0;
}

- (int)maxAgeHours {
    return 0;
}

- (BOOL)hasMaxAgeHours {
    return NO;
}

- (BOOL)requestRetryEnabled {
    return NO;
}

- (BOOL)hasRequestRetryEnabled {
    return NO;
}

- (BOOL)payloadRetryEnabled {
    return NO;
}

- (BOOL)hasPayloadRetryEnabled {
    return NO;
}

- (id)retryConfig {
    return nil;
}

- (BOOL)hasRetryConfig {
    return NO;
}

- (BOOL)serialExecutorEnabled {
    return NO;
}

- (BOOL)hasSerialExecutorEnabled {
    return NO;
}

- (BOOL)iosExperimentalControllerEnabled {
    return NO;
}

- (BOOL)hasIosExperimentalControllerEnabled {
    return NO;
}

- (BOOL)iosNewAccountChangeLoggingEnabled {
    return NO;
}

- (BOOL)hasIosNewAccountChangeLoggingEnabled {
    return NO;
}

- (BOOL)shouldForceSetAllPayloadsToImmediateTier {
    return NO;
}

- (BOOL)hasShouldForceSetAllPayloadsToImmediateTier {
    return NO;
}

- (BOOL)iosMakeRequestWithNilAsSignedOut {
    return NO;
}

- (BOOL)hasIosMakeRequestWithNilAsSignedOut {
    return NO;
}

- (BOOL)iosBackgroundDispatchEnabled {
    return NO;
}

- (BOOL)hasIosBackgroundDispatchEnabled {
    return NO;
}

%end

%hook YTILoggingHeartbeatConfig

// Override getters for all properties to disable or modify logging behavior

- (BOOL)enabled {
    return NO; // Disable logging heartbeat
}

- (int)foregroundCaptureIntervalSecs {
    return 0; // Set foreground capture interval to 0 seconds
}

- (int)inactiveTimeoutSecs {
    return 0; // Set inactive timeout to 0 seconds
}

- (BOOL)accountChangeHeartbeatEnabled {
    return NO; // Disable account change heartbeat
}

- (BOOL)sendDummyPayload {
    return NO; // Disable sending dummy payload
}

- (int)heartbeatPersistModulus {
    return 0; // Set heartbeat persist modulus to 0
}

- (BOOL)logHeartbeatCdn {
    return NO; // Disable logging heartbeat CDN
}

%end