.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageChangeScene.java"


# instance fields
.field config:Ljava/lang/String;

.field sceneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setConfig(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->config:Ljava/lang/String;

    return-void
.end method

.method public setSceneName(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->sceneName:Ljava/lang/String;

    .line 10
    sput-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sceneName:Ljava/lang/String;

    return-void
.end method
