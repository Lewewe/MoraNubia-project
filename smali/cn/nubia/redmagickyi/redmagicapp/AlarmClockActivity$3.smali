.class Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$3;
.super Ljava/lang/Object;
.source "AlarmClockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 746
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 749
    const-string v0, "AlarmClockActivity"

    const-string v1, "time out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->access$1000(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 751
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$800(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)V

    goto :goto_0

    .line 754
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)V

    :goto_0
    return-void
.end method
