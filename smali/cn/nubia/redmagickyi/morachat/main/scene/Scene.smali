.class public final enum Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
.super Ljava/lang/Enum;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/morachat/main/scene/Scene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

.field public static final enum FULLSCREEN_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

.field public static final enum FULLSCREEN_CHAT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

.field public static final enum WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

.field public static final enum WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

.field public static final enum WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;


# instance fields
.field private clazz:Ljava/lang/Class;

.field private sceneId:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 5

    .line 25
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_CHAT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    const/16 v1, 0x3e9

    const-class v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    const-string v3, "WINDOW_REDMAGICKYI"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 29
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    const/16 v1, 0x3ea

    const-class v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    const-string v3, "FULLSCREEN_CHAT"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_CHAT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 31
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    const/16 v1, 0x3eb

    const-class v2, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    const-string v3, "FULLSCREEN_ACCOMPANY"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 33
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    const/16 v1, 0x3ec

    const-class v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    const-string v3, "WINDOW_GAMEAGENT"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    const/16 v1, 0x3ed

    const-class v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    const-string v3, "WINDOW_AIASSISTANT"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->$values()[Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->sceneId:I

    .line 42
    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public static isSceneRunning(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z
    .locals 3

    .line 83
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 84
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    .line 89
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->getClazz()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getRunningProcesses(Landroid/content/Context;[Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-eq p1, v2, :cond_2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x7d

    if-eq p1, v2, :cond_2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p1, 0x12c

    if-ne p0, p1, :cond_3

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public static isSceneRunningForContentProvider(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z
    .locals 3

    .line 64
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 65
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 71
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->getClazz()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getRunningProcesses(Landroid/content/Context;[Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 72
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x7d

    if-eq p1, v2, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p1, 0x12c

    if-ne p0, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    const-class v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 1

    .line 25
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-object v0
.end method


# virtual methods
.method public currentProcess()Z
    .locals 3

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->clazz:Ljava/lang/Class;

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getProcessNameByComponentName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 56
    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    if-eq p0, v2, :cond_1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->clazz:Ljava/lang/Class;

    return-object p0
.end method

.method public getSceneId()I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->sceneId:I

    return p0
.end method
