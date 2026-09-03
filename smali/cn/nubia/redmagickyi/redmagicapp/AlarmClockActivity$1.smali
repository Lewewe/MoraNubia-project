.class Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$1;
.super Ljava/lang/Object;
.source "AlarmClockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->parseMessage(Ljava/lang/String;)V
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

    .line 173
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$002(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;Z)Z

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$100(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Landroid/view/View;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->fadeOut(Landroid/view/View;J)V

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$200(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)V

    return-void
.end method
