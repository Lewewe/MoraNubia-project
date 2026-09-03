.class Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;
.super Landroid/database/ContentObserver;
.source "PowerChargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmClockFiringStateChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 711
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    .line 712
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 717
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 718
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 719
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 720
    const-string p2, "fullscreen_firing_state"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 721
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$1300(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Z

    :cond_0
    return-void
.end method
