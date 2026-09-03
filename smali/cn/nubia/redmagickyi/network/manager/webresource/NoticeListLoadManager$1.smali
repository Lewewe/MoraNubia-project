.class Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;
.super Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;
.source "NoticeListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->updateNoticeList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    iput p3, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->val$type:I

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/network/model/NoticeListResponse;)V
    .locals 28

    move-object/from16 v0, p0

    .line 72
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$000(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 74
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;

    .line 76
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->getId()I

    move-result v15

    .line 77
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->getTitle()Ljava/lang/String;

    move-result-object v16

    .line 78
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->getContent()Ljava/lang/String;

    move-result-object v17

    .line 79
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy\u5e74MM\u6708dd\u65e5HH\u65f6mm\u5206"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->getPublish_time()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 80
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->getBegin_time()J

    move-result-wide v19

    .line 81
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->getEnd_time()J

    move-result-wide v21

    .line 82
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->getThumbnail_url()Ljava/lang/String;

    move-result-object v14

    .line 84
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->getImage_url()Ljava/lang/String;

    move-result-object v2

    .line 88
    iget v3, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->val$type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 89
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Ljava/util/List;

    move-result-object v13

    new-instance v11, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    iget v5, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->val$type:I

    const-string v23, ""

    const-string v24, ""

    move-object v3, v11

    move v4, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-wide/from16 v9, v19

    move/from16 v25, v1

    move-object v1, v11

    move-wide/from16 v11, v21

    move-object/from16 v26, v2

    move-object v2, v13

    move-object/from16 v13, v23

    move/from16 v23, v15

    move-object v15, v14

    move-object/from16 v14, v24

    invoke-direct/range {v3 .. v14}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v15

    goto :goto_1

    :cond_0
    move/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v23, v15

    move-object v15, v14

    .line 92
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$400(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v15, v3}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$300(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v13

    .line 94
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Ljava/util/List;

    move-result-object v1

    new-instance v14, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    iget v5, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->val$type:I

    const-string v24, ""

    move-object v3, v14

    move/from16 v4, v23

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-wide/from16 v9, v19

    move-wide/from16 v11, v21

    move-object/from16 v27, v15

    move-object v15, v14

    move-object/from16 v14, v24

    invoke-direct/range {v3 .. v14}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    goto :goto_1

    :cond_1
    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v14

    move/from16 v23, v15

    .line 98
    :goto_1
    iget v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->val$type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 99
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const-string v1, ""

    goto :goto_2

    .line 102
    :cond_2
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$400(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$200()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v27

    invoke-static {v2, v4, v3}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$300(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v3, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    :goto_2
    move-object v13, v1

    .line 106
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    iget v5, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->val$type:I

    const-string v14, ""

    move-object v3, v2

    move/from16 v4, v23

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-wide/from16 v9, v19

    move-wide/from16 v11, v21

    invoke-direct/range {v3 .. v14}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 109
    :cond_3
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$400(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$500()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v26

    invoke-static {v2, v4, v3}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$300(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v14

    .line 111
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Ljava/util/List;

    move-result-object v1

    new-instance v15, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    iget v5, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->val$type:I

    move-object v3, v15

    move/from16 v4, v23

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-wide/from16 v9, v19

    move-wide/from16 v11, v21

    invoke-direct/range {v3 .. v14}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v25, 0x1

    goto/16 :goto_0

    .line 117
    :cond_5
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/NoticeManager;->checkAvailable()V

    .line 119
    :cond_6
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$600(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 120
    iget-object v0, v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->access$700(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)V

    :cond_7
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

    .line 69
    check-cast p1, Lcn/nubia/redmagickyi/network/model/NoticeListResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->onSuccess(Lcn/nubia/redmagickyi/network/model/NoticeListResponse;)V

    return-void
.end method
