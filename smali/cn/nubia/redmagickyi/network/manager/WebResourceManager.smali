.class public Lcn/nubia/redmagickyi/network/manager/WebResourceManager;
.super Ljava/lang/Object;
.source "WebResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/manager/WebResourceManager$SingleInstance;
    }
.end annotation


# instance fields
.field private appLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

.field private bundleLoadManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

.field private emailLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

.field private noticeListLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

.field private systemTimeLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/network/manager/WebResourceManager;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/network/manager/WebResourceManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->appLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load()V
    .locals 6

    monitor-enter p0

    .line 45
    :try_start_0
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;

    const/4 v1, 0x0

    new-array v2, v1, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {v0, v2}, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->systemTimeLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;

    .line 46
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    new-array v2, v1, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {v0, v2}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->noticeListLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    .line 47
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    new-array v2, v1, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {v0, v2}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->emailLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->bundleLoadManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;

    const/4 v3, 0x3

    new-array v3, v3, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    iget-object v4, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->systemTimeLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->noticeListLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->emailLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-direct {v0, p0, v3}, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;-><init>(Lcn/nubia/redmagickyi/network/manager/WebResourceManager;[Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->bundleLoadManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->appLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    new-array v2, v2, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    iget-object v3, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->bundleLoadManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->appLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    .line 78
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->appLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->load()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
