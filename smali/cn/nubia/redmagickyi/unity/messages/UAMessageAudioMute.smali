.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageAudioMute;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageAudioMute.java"


# instance fields
.field isMute:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setMute(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageAudioMute;->isMute:Z

    return-void
.end method
