.class public Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;
.super Ljava/lang/Object;
.source "ZteAccountEntry.java"

# interfaces
.implements Lcom/zte/zteaccount/account/zte/AccountPresenter$AccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zteaccount/account/zte/ZteAccountEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAccountCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsFinish:Z

.field private final mWaitLock:Ljava/lang/Object;

.field private mZteAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mWaitLock:Ljava/lang/Object;

    .line 267
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 268
    iput-boolean p1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mIsFinish:Z

    return-void
.end method


# virtual methods
.method public get()Lcom/zte/zteaccount/account/AccountInfo;
    .locals 5

    const-string v0, "getaccount wait interrupt :"

    .line 278
    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mWaitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_0
    iget-boolean v2, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 281
    :try_start_1
    iget-object v2, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 283
    :try_start_2
    const-string v3, "ZteAccountEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mZteAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    return-object p0

    :catchall_0
    move-exception p0

    .line 286
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onAccountObtain(Lcom/zte/zteaccount/account/AccountInfo;)V
    .locals 3

    .line 292
    const-string v0, "ZteAccountEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAccountObtain:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mZteAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    .line 294
    iget-object p1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mWaitLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 295
    :try_start_0
    iput-boolean v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mIsFinish:Z

    .line 296
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 297
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setIsFinish(Z)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iput-boolean p1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->mIsFinish:Z

    .line 274
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
