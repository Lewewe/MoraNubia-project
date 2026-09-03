.class Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;
.super Ljava/lang/Object;
.source "SkinLocaleDataManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeSkinHandlerCallback"
.end annotation


# static fields
.field private static final MSG_RESET_PLAY_ANIM_FLAG:I = 0x1


# instance fields
.field private changeSkinHandler:Landroid/os/Handler;

.field private delayedChangeSkinMessage:[I

.field private isPlayingEnterAnim:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->isPlayingEnterAnim:Z

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->changeSkinHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$1;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;II)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->indeedChangeSkin(II)V

    return-void
.end method

.method private indeedChangeSkin(II)V
    .locals 6

    .line 136
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->access$200()Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->isPlayingEnterAnim()Z

    move-result v0

    const-string v1, "SkinLocaleDataManager"

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "playing enter animation, cached change skin and wait"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->delayedChangeSkinMessage:[I

    goto :goto_0

    .line 141
    :cond_0
    const-string p0, "begin changeSkin"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;-><init>()V

    const/16 v0, 0x3fc

    .line 143
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setMsgID(I)V

    .line 144
    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->access$300(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setSkinId(I)V

    .line 145
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setType(I)V

    .line 146
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 147
    new-instance p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 108
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->setPlayingEnterAnim(Z)V

    :goto_0
    return v1
.end method

.method public isPlayingEnterAnim()Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->isPlayingEnterAnim:Z

    return p0
.end method

.method public setPlayingEnterAnim(Z)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->changeSkinHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->isPlayingEnterAnim:Z

    if-eqz p1, :cond_0

    .line 126
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->changeSkinHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->delayedChangeSkinMessage:[I

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 129
    aget v0, p1, v0

    aget p1, p1, v1

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->indeedChangeSkin(II)V

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->delayedChangeSkinMessage:[I

    :cond_1
    :goto_0
    return-void
.end method
