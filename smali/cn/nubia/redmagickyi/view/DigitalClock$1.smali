.class Lcn/nubia/redmagickyi/view/DigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/DigitalClock;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/DigitalClock;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock$1;->this$0:Lcn/nubia/redmagickyi/view/DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock$1;->this$0:Lcn/nubia/redmagickyi/view/DigitalClock;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/DigitalClock;->access$000(Lcn/nubia/redmagickyi/view/DigitalClock;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock$1;->this$0:Lcn/nubia/redmagickyi/view/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/view/DigitalClock;->access$102(Lcn/nubia/redmagickyi/view/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 74
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/DigitalClock$1;->this$0:Lcn/nubia/redmagickyi/view/DigitalClock;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/DigitalClock;->updateTime()V

    return-void
.end method
