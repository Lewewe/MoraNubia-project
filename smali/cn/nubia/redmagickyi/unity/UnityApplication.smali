.class public Lcn/nubia/redmagickyi/unity/UnityApplication;
.super Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;
.source "UnityApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcesskilled(I)V
    .locals 7

    .line 12
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 13
    new-instance p1, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    move-object v0, p1

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    new-instance p1, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    const-string v5, ""

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    move-object v1, p1

    move-object v4, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
