.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1032
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$800()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V
    .locals 0

    .line 1025
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppId()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1

    .line 1154
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1155
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public clearAppVersion()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1

    .line 1236
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1237
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public clearMediapipeVersion()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1

    .line 1317
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1318
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public clearPlatform()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1084
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    .line 1112
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1126
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 0

    .line 1197
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1210
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMediapipeVersion()Ljava/lang/String;
    .locals 0

    .line 1278
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getMediapipeVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediapipeVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1291
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getMediapipeVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPlatform()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;
    .locals 0

    .line 1058
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getPlatform()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;

    move-result-object p0

    return-object p0
.end method

.method public hasAppId()Z
    .locals 0

    .line 1099
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->hasAppId()Z

    move-result p0

    return p0
.end method

.method public hasAppVersion()Z
    .locals 0

    .line 1185
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->hasAppVersion()Z

    move-result p0

    return p0
.end method

.method public hasMediapipeVersion()Z
    .locals 0

    .line 1266
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->hasMediapipeVersion()Z

    move-result p0

    return p0
.end method

.method public hasPlatform()Z
    .locals 0

    .line 1046
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->hasPlatform()Z

    move-result p0

    return p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1140
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1141
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1170
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1171
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1223
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1224
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1251
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1252
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMediapipeVersion(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1304
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1305
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMediapipeVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1332
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1333
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPlatform(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1071
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;)V

    return-object p0
.end method
