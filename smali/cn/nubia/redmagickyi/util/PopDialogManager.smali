.class public Lcn/nubia/redmagickyi/util/PopDialogManager;
.super Ljava/lang/Object;
.source "PopDialogManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;
    }
.end annotation


# instance fields
.field private appUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

.field private delayedDialogList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;"
        }
    .end annotation
.end field

.field private expiredDialogList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

.field private noticeDialog:Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

.field private resourceUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/database/NoticeManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    .line 45
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->delayedDialogList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 46
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->expiredDialogList:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/util/PopDialogManager;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->appUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/PopDialogManager;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->resourceUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/util/PopDialogManager;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->resourceUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/PopDialogManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->delayedDialogList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/util/PopDialogManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->popNoticeDialog()V

    return-void
.end method

.method private getCurrentSystemTime()J
    .locals 2

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private initNoticeDialogList(Z)V
    .locals 6

    .line 127
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->getCurrentSystemTime()J

    move-result-wide v0

    .line 128
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getDontRemindMeTodayTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lcn/nubia/redmagickyi/util/PopDialogManager;->isSameDay(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/database/NoticeManager;->queryAllNotice()Ljava/util/List;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->delayedDialogList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 134
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 135
    new-instance v3, Lcn/nubia/redmagickyi/util/PopDialogManager$3;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/util/PopDialogManager$3;-><init>(Lcn/nubia/redmagickyi/util/PopDialogManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 143
    iget-object v4, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->expiredDialogList:Ljava/util/Set;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_2

    .line 146
    iget-object v4, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->delayedDialogList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getBegin()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getEnd()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    .line 149
    iget-object v4, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->delayedDialogList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private isSameDay(JJ)Z
    .locals 1

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 170
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x0

    .line 173
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    if-ne p3, p4, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p4, v0, :cond_0

    const/4 p4, 0x6

    invoke-virtual {p0, p4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, p4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    move p2, p3

    :cond_0
    return p2
.end method

.method private popNoticeDialog()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->delayedDialogList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->showNoticeDialog(Lcn/nubia/redmagickyi/network/bean/NoticeBean;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forceDismissNoticeDialog()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->delayedDialogList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->expiredDialogList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->onDontRemindStateChanged(Z)V

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->noticeDialog:Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->dismiss()V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->noticeDialog:Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->noticeDialog:Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->delayedDialogList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 191
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->noticeDialog:Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->access$400(Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 193
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->expiredDialogList:Ljava/util/Set;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->noticeDialog:Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->access$500(Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;)Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->expiredDialogList:Ljava/util/Set;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->popNoticeDialog()V

    return-void
.end method

.method public onDontRemindStateChanged(Z)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->getCurrentSystemTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Utils;->updateDontRemindMeTodayTimestamp(Landroid/content/Context;J)V

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->noticeDialog:Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

    if-eqz p0, :cond_1

    .line 180
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->access$402(Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;Z)Z

    :cond_1
    return-void
.end method

.method public performOnAppUpdate(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->appUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/redmagickyi/util/PopDialogManager$1;

    invoke-direct {v2, p0, p2}, Lcn/nubia/redmagickyi/util/PopDialogManager$1;-><init>(Lcn/nubia/redmagickyi/util/PopDialogManager;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->appUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

    .line 67
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->appUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 68
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->appUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->show(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V

    :cond_1
    return-void
.end method

.method public performOnNoticeInit()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->initNoticeDialogList(Z)V

    .line 109
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->popNoticeDialog()V

    return-void
.end method

.method public performOnNoticeUpdate()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->initNoticeDialogList(Z)V

    .line 101
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->popNoticeDialog()V

    return-void
.end method

.method public performOnResourceUpdate(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->resourceUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/redmagickyi/util/PopDialogManager$2;

    invoke-direct {v2, p0, p2}, Lcn/nubia/redmagickyi/util/PopDialogManager$2;-><init>(Lcn/nubia/redmagickyi/util/PopDialogManager;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->resourceUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    .line 89
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->appUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_2

    .line 90
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->resourceUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_2

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->resourceUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;->show(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;)V

    :cond_2
    return-void
.end method

.method public showNoticeDialog(Lcn/nubia/redmagickyi/network/bean/NoticeBean;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->appUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->resourceUpdateDialog:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->noticeDialog:Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    :cond_2
    new-instance v0, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p0}, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;-><init>(Lcn/nubia/redmagickyi/util/PopDialogManager;Landroid/content/Context;Lcn/nubia/redmagickyi/network/bean/NoticeBean;Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager;->noticeDialog:Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;

    .line 119
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->show()V

    const/4 p1, 0x1

    .line 120
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/PopDialogManager;->onDontRemindStateChanged(Z)V

    :cond_3
    return-void
.end method
