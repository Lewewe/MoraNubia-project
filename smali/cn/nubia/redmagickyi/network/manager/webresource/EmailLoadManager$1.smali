.class Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;
.super Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;
.source "EmailLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$400(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$400(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/network/model/EmailResponse;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 55
    iget-object v2, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$000(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z

    move-result v2

    .line 56
    iget-object v3, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/network/model/EmailResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_4

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 58
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/network/model/EmailResponse;->getData()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/network/model/EmailResponse;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/network/model/EmailResponse;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;

    .line 60
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getId()I

    move-result v7

    .line 61
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getContent()Ljava/lang/String;

    move-result-object v10

    .line 63
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy\u5e74MM\u6708dd\u65e5 HH\u65f6mm\u5206"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getPublish_time()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 64
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getUser_email_status()I

    move-result v12

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "onSuccess: email id =  "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " status = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " title = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "EmailLoadManager"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getAttachment_file_md5()Ljava/lang/String;

    move-result-object v14

    .line 68
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getAttachment_url()Ljava/lang/String;

    move-result-object v15

    .line 69
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getAuthor()Ljava/lang/String;

    move-result-object v9

    .line 70
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getAttachment_file_md5()Ljava/lang/String;

    .line 71
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->getAttachment_file_size()J

    move-result-wide v16

    const/4 v5, -0x1

    if-eq v12, v5, :cond_0

    .line 73
    sget-object v6, Lcn/nubia/redmagickyi/network/NetworkUtils;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    const-string v13, ""

    invoke-virtual/range {v6 .. v17}, Lcn/nubia/redmagickyi/database/EmailManager;->createEmailBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcn/nubia/redmagickyi/network/bean/EmailBean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 76
    :cond_1
    iget-object v4, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$200(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 77
    iget-object v4, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$300(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/database/EmailManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 78
    iget-object v4, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$300(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/database/EmailManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/database/EmailManager;->updateEmail(Ljava/util/List;)V

    .line 80
    :cond_2
    sget-object v4, Lcn/nubia/redmagickyi/network/NetworkUtils;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/database/EmailManager;->updateEmail(Ljava/util/List;)V

    .line 81
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0xbc4

    .line 82
    iput v4, v3, Landroid/os/Message;->what:I

    .line 83
    invoke-static {v3}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sendMessage(Landroid/os/Message;)V

    .line 85
    :cond_3
    iget-object v3, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$400(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 86
    iget-object v3, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$400(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;

    move-result-object v3

    invoke-interface {v3, v1}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/network/model/EmailResponse;)V

    goto :goto_1

    .line 88
    :cond_4
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$500(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$400(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 89
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$400(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 91
    :cond_5
    :goto_1
    iget-object v1, v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->access$600(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z

    move-result v1

    if-eq v2, v1, :cond_6

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->cancel()V

    :cond_6
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

    .line 52
    check-cast p1, Lcn/nubia/redmagickyi/network/model/EmailResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;->onSuccess(Lcn/nubia/redmagickyi/network/model/EmailResponse;)V

    return-void
.end method
