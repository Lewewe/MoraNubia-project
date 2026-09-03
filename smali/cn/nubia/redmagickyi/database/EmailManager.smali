.class public Lcn/nubia/redmagickyi/database/EmailManager;
.super Ljava/lang/Object;
.source "EmailManager.java"


# static fields
.field public static final EMAIL_DATE_FORMAT:Ljava/lang/String; = "yyyy\u5e74MM\u6708dd\u65e5 HH\u65f6mm\u5206"

.field public static final NOTICE_DATE_FORMAT:Ljava/lang/String; = "yyyy\u5e74MM\u6708dd\u65e5HH\u65f6mm\u5206"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/EmailBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createEmailBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcn/nubia/redmagickyi/network/bean/EmailBean;
    .locals 13

    .line 31
    new-instance v12, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    move-object v0, v12

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcn/nubia/redmagickyi/network/bean/EmailBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v12
.end method

.method public deleteAllEmail()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 118
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 7

    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 94
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "; status = "

    const-string v4, "; title = "

    const-string v5, "dump : id = "

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 96
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getStatus()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 99
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; attatchPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 100
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getAttatchPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; publishTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getPublishTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; attatchSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getAttachmentSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; attatchCheckSum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 102
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getAttatchCheckSum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; attatchUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public insertEmail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertEmail: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-virtual/range {p0 .. p11}, Lcn/nubia/redmagickyi/database/EmailManager;->createEmailBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcn/nubia/redmagickyi/network/bean/EmailBean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isAllReaded()Z
    .locals 1

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 108
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 109
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isRead(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 85
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 86
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->isRead()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public queryAllEmail()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/EmailBean;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    return-object p0
.end method

.method public syncStatus(II)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "synStatus: before size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 72
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 74
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setRead()V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "synStatus: after size = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public syncStatus(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 42
    iget-object p1, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "syncStatus: batch read before size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 47
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 48
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setRead()V

    goto :goto_0

    .line 52
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "syncStatus: batch read after size = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 54
    iget-object p1, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "syncStatus: batch delete before size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 59
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v1

    if-ne v1, p2, :cond_5

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 64
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/database/EmailManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "syncStatus: batch delete after size = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public updateEmail(ILcn/nubia/redmagickyi/network/bean/EmailBean;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 126
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 127
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setTitle(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setContent(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getAttatchPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setAttatchPath(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getPublishTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setPublishTime(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setStatus(I)V

    .line 132
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getAttatchCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setAttatchCheckSum(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setAuthor(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setAttachmentUrl(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getAttachmentSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->setAttachmentSize(J)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/EmailManager;->dump()V

    return-void
.end method

.method public updateEmail(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/EmailBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/EmailManager;->mEmailList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
