.class Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;
.super Ljava/lang/Object;
.source "NubiaAccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnGetOAuthTokenListener"
.end annotation


# instance fields
.field private mIsFinish:Z

.field private final mWaitLock:Ljava/lang/Object;

.field private oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mIsFinish:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcn/nubia/oauthsdk/OAuthToken;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-boolean v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 299
    :try_start_1
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 301
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 304
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;

    return-object p0

    :catchall_0
    move-exception p0

    .line 304
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onComplete(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;

    const/4 p1, 0x1

    .line 311
    iput-boolean p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mIsFinish:Z

    .line 312
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 313
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onException(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 1

    .line 317
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mWaitLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 318
    :try_start_0
    iput-boolean v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mIsFinish:Z

    .line 319
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 320
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
