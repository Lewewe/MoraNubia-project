.class public Lcom/zte/aimodel/shareMemoryClient/ParameterTransfer;
.super Ljava/lang/Object;
.source "ParameterTransfer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commandToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 38
    const-string p0, "UNKNOWN_COMMAND"

    goto :goto_0

    .line 37
    :pswitch_0
    const-string p0, "FLUSH"

    goto :goto_0

    .line 36
    :pswitch_1
    const-string p0, "PAUSE"

    goto :goto_0

    .line 35
    :pswitch_2
    const-string p0, "STANDBY"

    goto :goto_0

    .line 34
    :pswitch_3
    const-string p0, "DRAIN"

    goto :goto_0

    .line 33
    :pswitch_4
    const-string p0, "BURST"

    goto :goto_0

    .line 32
    :pswitch_5
    const-string p0, "START"

    goto :goto_0

    .line 31
    :pswitch_6
    const-string p0, "GET_STATUS"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static stateTransfer(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 25
    const-string p0, "ERROR"

    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "DRAINING"

    goto :goto_0

    .line 23
    :cond_1
    const-string p0, "PAUSED"

    goto :goto_0

    .line 22
    :cond_2
    const-string p0, "ACTIVE"

    goto :goto_0

    .line 21
    :cond_3
    const-string p0, "IDLE"

    goto :goto_0

    .line 20
    :cond_4
    const-string p0, "STANDBY"

    :goto_0
    return-object p0
.end method

.method public static statusTransfer(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 14
    const-string p0, "UNKNOWN"

    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "NOT_ENOUGH_DATA"

    goto :goto_0

    .line 12
    :cond_1
    const-string p0, "INVALID_OPERATION"

    goto :goto_0

    .line 11
    :cond_2
    const-string p0, "BAD_VALUE"

    goto :goto_0

    .line 10
    :cond_3
    const-string p0, "OK"

    :goto_0
    return-object p0
.end method
