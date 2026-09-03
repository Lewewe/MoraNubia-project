.class public Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;
.super Ljava/lang/Object;
.source "MotionConfigManager.java"


# static fields
.field public static final RES_TYPE_AUDIO:I = 0x0

.field public static final RES_TYPE_AUDIO_NORMAL:I = -0x1

.field public static final RES_TYPE_MOTION:I = 0x1

.field public static final RES_TYPE_MOTION_CARE:I = 0x2

.field public static final RES_TYPE_MOTION_NORMAL:I = 0x0

.field public static final RES_TYPE_MOTION_SECRET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotionConfig"

.field private static motionConfigCallbackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/nubia/redmagickyi/unity/motion/inf/OnMotionConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static motionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionConfigCallbackList:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertMotion(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;",
            ">;)V"
        }
    .end annotation

    .line 42
    sget-object v0, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    .line 46
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getId()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->searchMotion(I)Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->equals(Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 60
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->resetMotion()V

    .line 62
    sget-object v0, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    sget-object p0, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionConfigCallbackList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/unity/motion/inf/OnMotionConfigCallback;

    .line 64
    invoke-interface {v0}, Lcn/nubia/redmagickyi/unity/motion/inf/OnMotionConfigCallback;->onMotionListChanged()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static queryAllMotions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 36
    sget-object v1, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static registMotionConfigCallback(Lcn/nubia/redmagickyi/unity/motion/inf/OnMotionConfigCallback;)V
    .locals 1

    .line 84
    sget-object v0, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionConfigCallbackList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static resetMotion()V
    .locals 2

    .line 79
    const-string v0, "MotionConfig"

    const-string v1, "resetMotionDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static searchMotion(I)Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;
    .locals 3

    .line 70
    sget-object v0, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    .line 71
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getId()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static unregistMotionConfigCallback(Lcn/nubia/redmagickyi/unity/motion/inf/OnMotionConfigCallback;)V
    .locals 1

    .line 88
    sget-object v0, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->motionConfigCallbackList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
