.class public Lcom/nubia/androidforunity/UnityUtils;
.super Ljava/lang/Object;
.source "UnityUtils.java"


# static fields
.field private static ins:Lcom/nubia/androidforunity/UnityUtils;


# instance fields
.field androidToUnityCallback:Lcom/nubia/androidforunity/AndroidToUnityCallback;

.field unityToAndroidCallback:Lcom/nubia/androidforunity/UnityToAndroidCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Instance()Lcom/nubia/androidforunity/UnityUtils;
    .locals 1

    .line 8
    sget-object v0, Lcom/nubia/androidforunity/UnityUtils;->ins:Lcom/nubia/androidforunity/UnityUtils;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/nubia/androidforunity/UnityUtils;

    invoke-direct {v0}, Lcom/nubia/androidforunity/UnityUtils;-><init>()V

    sput-object v0, Lcom/nubia/androidforunity/UnityUtils;->ins:Lcom/nubia/androidforunity/UnityUtils;

    .line 11
    :cond_0
    sget-object v0, Lcom/nubia/androidforunity/UnityUtils;->ins:Lcom/nubia/androidforunity/UnityUtils;

    return-object v0
.end method


# virtual methods
.method public sendToAndroid(Ljava/lang/String;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/nubia/androidforunity/UnityUtils;->unityToAndroidCallback:Lcom/nubia/androidforunity/UnityToAndroidCallback;

    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p0, p1}, Lcom/nubia/androidforunity/UnityToAndroidCallback;->OnUnityMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendToUnity(Ljava/lang/String;)V
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/nubia/androidforunity/UnityUtils;->androidToUnityCallback:Lcom/nubia/androidforunity/AndroidToUnityCallback;

    if-eqz p0, :cond_0

    .line 30
    invoke-interface {p0, p1}, Lcom/nubia/androidforunity/AndroidToUnityCallback;->OnAndroidMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAndroidToUnityListen(Lcom/nubia/androidforunity/AndroidToUnityCallback;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/nubia/androidforunity/UnityUtils;->androidToUnityCallback:Lcom/nubia/androidforunity/AndroidToUnityCallback;

    return-void
.end method

.method public setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/nubia/androidforunity/UnityUtils;->unityToAndroidCallback:Lcom/nubia/androidforunity/UnityToAndroidCallback;

    return-void
.end method
