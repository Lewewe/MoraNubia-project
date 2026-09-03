.class public Lcn/nubia/upgrade/service/UpgradeJobService;
.super Landroid/app/job/JobService;
.source "UpgradeJobService.java"

# interfaces
.implements Lcn/nubia/upgrade/service/c$f;


# instance fields
.field private a:Lcn/nubia/upgrade/service/c;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 4
    new-instance v0, Lcn/nubia/upgrade/service/c;

    invoke-direct {v0}, Lcn/nubia/upgrade/service/c;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->a:Lcn/nubia/upgrade/service/c;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "cmd"

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CMD:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcn/nubia/upgrade/service/UpgradeJobService;->a(Landroid/os/Bundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " JOB_PID:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Lcn/nubia/upgrade/service/UpgradeJobService;->b(Landroid/os/Bundle;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "job_pid"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static b(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/upgrade/service/UpgradeJobService;->a(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWorkTerminated:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpgradeJobService"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobParameters;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jobFinished:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeJobService;->b(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->a:Lcn/nubia/upgrade/service/c;

    invoke-virtual {v0, p0}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c$f;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->a:Lcn/nubia/upgrade/service/c;

    const-string v1, "UpgradeJobService"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/upgrade/service/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->a:Lcn/nubia/upgrade/service/c;

    invoke-virtual {p0}, Lcn/nubia/upgrade/service/c;->a()V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartJob:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/nubia/upgrade/service/UpgradeJobService;->b(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpgradeJobService"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeJobService;->a(Landroid/os/Bundle;)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobParameters;

    .line 6
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/upgrade/service/UpgradeJobService;->a(Landroid/os/Bundle;)I

    move-result v4

    if-ne v4, v2, :cond_0

    const-string p0, "FORBIDDEN: has contain sample cmd"

    .line 7
    invoke-static {v1, p0}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 12
    :cond_1
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->a:Lcn/nubia/upgrade/service/c;

    invoke-virtual {v2, v0}, Lcn/nubia/upgrade/service/c;->a(Landroid/os/Bundle;)I

    move-result v2

    const-string v3, "job_pid"

    const/4 v4, -0x1

    .line 13
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "oldPid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newPid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v3, v4, :cond_2

    if-eq v3, v2, :cond_2

    const-string p0, "FORBIDDEN: this job from system cache"

    .line 16
    invoke-static {v1, p0}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 20
    :cond_2
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    iget-object p0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->a:Lcn/nubia/upgrade/service/c;

    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/service/c;->a(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStopJob:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/nubia/upgrade/service/UpgradeJobService;->b(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpgradeJobService"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobParameters;

    .line 3
    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string p1, "onStopJob find in running job"

    .line 4
    invoke-static {v1, p1}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
