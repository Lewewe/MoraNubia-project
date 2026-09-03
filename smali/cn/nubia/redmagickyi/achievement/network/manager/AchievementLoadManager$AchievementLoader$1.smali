.class Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;
.super Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;
.source "AchievementLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->reportHonors(Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;

.field final synthetic val$index:I

.field final synthetic val$item:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;

.field final synthetic val$loginToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;ILcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iput p2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$index:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$item:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;

    iput-object p4, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$loginToken:Ljava/lang/String;

    iput-object p5, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportHonors onError index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isCanceled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 140
    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportHonors onSuccess index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isCanceled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v0

    .line 146
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;->getCode()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 150
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;->getCode()I

    move-result p1

    const/16 v1, 0x2329

    if-ne p1, v1, :cond_1

    .line 152
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$item:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;->getTaskId()I

    move-result p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$loginToken:Ljava/lang/String;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->clearData(ILjava/lang/String;)V

    .line 154
    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$index:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 156
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$loginToken:Ljava/lang/String;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$loginToken:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;

    iget v3, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->val$index:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;I)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 161
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 163
    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_5

    .line 165
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->cancel()V

    :cond_5
    return-void
.end method

.method protected bridge synthetic onSuccessInMainThread(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 140
    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;)V

    return-void
.end method
