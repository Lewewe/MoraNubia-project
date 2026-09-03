.class Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager$1;
.super Ljava/lang/Object;
.source "RedmagickyiCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager;->access$000()V

    .line 26
    invoke-static {}, Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager;->clearVideoCache()V

    return-void
.end method
