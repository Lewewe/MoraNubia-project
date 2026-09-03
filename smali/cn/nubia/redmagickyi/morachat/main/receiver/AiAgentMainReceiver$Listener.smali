.class public interface abstract Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;
.super Ljava/lang/Object;
.source "AiAgentMainReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAiAgentSettingsChanged(Ljava/lang/String;)V
.end method

.method public abstract onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V
.end method

.method public abstract onDigitalHumanSettingsChanged(Ljava/lang/String;)V
.end method

.method public abstract onScreenStatusChanged(Ljava/lang/String;)V
.end method

.method public abstract onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
