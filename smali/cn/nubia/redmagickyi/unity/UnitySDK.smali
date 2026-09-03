.class public Lcn/nubia/redmagickyi/unity/UnitySDK;
.super Ljava/lang/Object;
.source "UnitySDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;
    }
.end annotation


# static fields
.field private static eventListener:Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;

.field private static preferTtsToPlayAudio:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPreferTtsToPlayAudio()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcn/nubia/redmagickyi/unity/UnitySDK;->preferTtsToPlayAudio:Z

    return v0
.end method

.method public static sendToAndroid(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/nubia/androidforunity/UnityUtils;->Instance()Lcom/nubia/androidforunity/UnityUtils;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/nubia/androidforunity/UnityUtils;->sendToAndroid(Ljava/lang/String;)V

    return-void
.end method

.method public static sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V
    .locals 2

    .line 32
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnitySDK;->eventListener:Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;->onSendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;

    move-result-object p0

    .line 35
    :cond_0
    invoke-static {}, Lcom/nubia/androidforunity/UnityUtils;->Instance()Lcom/nubia/androidforunity/UnityUtils;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/nubia/androidforunity/UnityUtils;->sendToUnity(Ljava/lang/String;)V

    return-void
.end method

.method public static setAndroidToUnityListen(Lcom/nubia/androidforunity/AndroidToUnityCallback;)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/nubia/androidforunity/UnityUtils;->Instance()Lcom/nubia/androidforunity/UnityUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nubia/androidforunity/UnityUtils;->setAndroidToUnityListen(Lcom/nubia/androidforunity/AndroidToUnityCallback;)V

    return-void
.end method

.method public static setEventListener(Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;)V
    .locals 0

    .line 16
    sput-object p0, Lcn/nubia/redmagickyi/unity/UnitySDK;->eventListener:Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;

    return-void
.end method

.method public static setPreferTtsToPlayAudio(Z)V
    .locals 0

    .line 43
    sput-boolean p0, Lcn/nubia/redmagickyi/unity/UnitySDK;->preferTtsToPlayAudio:Z

    return-void
.end method

.method public static setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V
    .locals 1

    .line 24
    invoke-static {}, Lcom/nubia/androidforunity/UnityUtils;->Instance()Lcom/nubia/androidforunity/UnityUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nubia/androidforunity/UnityUtils;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    return-void
.end method
