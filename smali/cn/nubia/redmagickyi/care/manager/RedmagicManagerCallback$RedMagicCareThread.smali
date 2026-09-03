.class public Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;
.super Ljava/lang/Thread;
.source "RedmagicManagerCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RedMagicCareThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;->this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 164
    const-string v0, "RedMagicCareThread run"

    const-string v1, "RedmagicManagerCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$000()Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;->this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    iget-object v2, v2, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->UpdateTodayCareData(Landroid/content/Context;)V

    .line 166
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;->this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IS_DESK_VISIBLE:Z

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$000()Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getLastCareTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$100()Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getPlayFrequency()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getPalyCareFrequencyTime(I)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 170
    const-string p0, "RedMagicCareThread Limit care Time:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$000()Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getLastCareTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    .line 172
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$000()Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    invoke-static {}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->UpdateCurrentCareTimeMillis()V

    :cond_1
    return-void

    .line 176
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$100()Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v2

    const-string v3, "scence_systerm"

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getSystermList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$100()Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v2

    const-string v3, "scence_life"

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getLifeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_4
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$100()Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v2

    const-string v3, "scence_work_study"

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getWorkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 191
    const-string p0, "careList.size() == 0:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 v2, 0x0

    .line 194
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 195
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 196
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$100()Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;->this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    iget-object v5, v5, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getCareTypeInt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->IsCheckThisScenceCare(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "run() not open scence switch:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getCareTypeInt(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :cond_7
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$000()Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->NotLimitCareTime(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 201
    iget-object v4, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;->this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    iget-object v4, v4, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$100()Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->CareUtilinit(Landroid/content/Context;ILcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 203
    iget-object v4, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;->this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-static {v4}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->access$200(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;)Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OnRedmagicCareCallback run:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;->this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->OnRedmagicCare(I)V

    return-void

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method
