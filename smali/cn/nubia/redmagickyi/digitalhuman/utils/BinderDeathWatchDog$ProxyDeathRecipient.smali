.class Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$ProxyDeathRecipient;
.super Ljava/lang/Object;
.source "BinderDeathWatchDog.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$ProxyDeathRecipient;->this$0:Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$ProxyDeathRecipient;-><init>(Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$ProxyDeathRecipient;->this$0:Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->access$100(Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    return-void
.end method
