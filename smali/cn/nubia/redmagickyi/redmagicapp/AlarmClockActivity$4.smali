.class Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$4;
.super Ljava/lang/Object;
.source "AlarmClockActivity.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->registerActivityLifecycleCallbacks()V
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

    .line 1012
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 1029
    const-string p1, "AlarmClockActivity"

    const-string v0, "onActivityPaused"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1033
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/16 v0, 0x14

    .line 1034
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1035
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1037
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1038
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1024
    const-string p0, "AlarmClockActivity"

    const-string p1, "onActivityResumed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1019
    const-string p0, "AlarmClockActivity"

    const-string p1, "onActivityStarted"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1046
    const-string p0, "AlarmClockActivity"

    const-string p1, "onActivityStopped"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
