.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageVoiceAssistantSpeaking.java"


# instance fields
.field isSpeaking:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public isSpeaking()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->isSpeaking:Z

    return p0
.end method

.method public setSpeaking(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->isSpeaking:Z

    return-void
.end method
