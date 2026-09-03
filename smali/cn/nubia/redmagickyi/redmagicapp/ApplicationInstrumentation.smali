.class Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;
.super Ljava/lang/Object;
.source "ApplicationInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation$RedmagickyiInstrumentation;
    }
.end annotation


# static fields
.field private static tag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private initApplicationContext(Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;)V
    .locals 0

    .line 38
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ApplicationContext;->setContext(Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;)V

    .line 39
    const-string p0, "cn.nubia.redmagickyi"

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->setPackageName(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;->getProcessName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->setProcessName(Ljava/lang/String;)V

    const p0, 0xc56d

    .line 41
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->setVersionCode(I)V

    .line 42
    const-string p0, "16.0.000.2606081843"

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->setVersionName(Ljava/lang/String;)V

    return-void
.end method

.method private initZTEAIModelEnvironment(Landroid/app/Application;)V
    .locals 2

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalRom()Z

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 48
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/payment/BillingServiceManager;->setEnable(Z)V

    .line 51
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zte/aimodel/AIClient;->setDefaultAIModelSourceChat(I)V

    .line 52
    sget-object p0, Lcom/zte/aimodel/feature/chat/ChatModel;->Gemini:Lcom/zte/aimodel/feature/chat/ChatModel;

    invoke-static {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->setCurrent(Lcom/zte/aimodel/feature/chat/ChatModel;)V

    .line 53
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zte/aimodel/AIClient;->setDefaultAIModelSourcePictureAnalyze(I)V

    .line 54
    sget-object p0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->Gemini:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    invoke-static {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->setCurrent(Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;)V

    .line 57
    sget-object p0, Lcom/zte/aivoice/tts/TTSSource;->Google:Lcom/zte/aivoice/tts/TTSSource;

    sget-object p1, Lcom/zte/aivoice/asr/ASRSource;->Google:Lcom/zte/aivoice/asr/ASRSource;

    invoke-static {p0, p1}, Lcom/zte/aivoice/AIVoiceManager;->switchSource(Lcom/zte/aivoice/tts/TTSSource;Lcom/zte/aivoice/asr/ASRSource;)V

    goto :goto_1

    .line 59
    :cond_0
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zte/payment/BillingServiceManager;->setEnable(Z)V

    .line 61
    const-string p0, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 62
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/aimodel/AIClient;->setDefaultAIModelSourceChat(I)V

    .line 63
    sget-object p0, Lcom/zte/aimodel/feature/chat/ChatModel;->WenXinYiYan:Lcom/zte/aimodel/feature/chat/ChatModel;

    invoke-static {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->setCurrent(Lcom/zte/aimodel/feature/chat/ChatModel;)V

    .line 64
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/aimodel/AIClient;->setDefaultAIModelSourcePictureAnalyze(I)V

    .line 65
    sget-object p0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->ByteDance:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    invoke-static {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->setCurrent(Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zte/aimodel/AIClient;->setDefaultAIModelSourceChat(I)V

    .line 69
    sget-object p0, Lcom/zte/aimodel/feature/chat/ChatModel;->AIMOE:Lcom/zte/aimodel/feature/chat/ChatModel;

    invoke-static {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->setCurrent(Lcom/zte/aimodel/feature/chat/ChatModel;)V

    .line 71
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/aimodel/AIClient;->setDefaultAIModelSourcePictureAnalyze(I)V

    .line 72
    sget-object p0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->ByteDance:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    invoke-static {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->setCurrent(Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;)V

    .line 75
    :goto_0
    sget-object p0, Lcom/zte/aivoice/tts/TTSSource;->Bytedance:Lcom/zte/aivoice/tts/TTSSource;

    sget-object p1, Lcom/zte/aivoice/asr/ASRSource;->Microsoft:Lcom/zte/aivoice/asr/ASRSource;

    invoke-static {p0, p1}, Lcom/zte/aivoice/AIVoiceManager;->switchSource(Lcom/zte/aivoice/tts/TTSSource;Lcom/zte/aivoice/asr/ASRSource;)V

    :goto_1
    return-void
.end method

.method private setInstrumentation()V
    .locals 3

    .line 81
    :try_start_0
    const-string p0, "android.app.ActivityThread"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 82
    const-string v0, "currentActivityThread"

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 84
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mInstrumentation"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    .line 88
    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation$RedmagickyiInstrumentation;

    invoke-direct {v2, v0}, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation$RedmagickyiInstrumentation;-><init>(Landroid/app/Instrumentation;)V

    .line 89
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    sget-object p0, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;->tag:Ljava/lang/String;

    const-string v0, "set instrumentation successfully"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set instrumentation failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;)V
    .locals 0

    .line 31
    sput-object p1, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;->tag:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;->initApplicationContext(Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;)V

    .line 33
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;->initZTEAIModelEnvironment(Landroid/app/Application;)V

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;->setInstrumentation()V

    return-void
.end method
