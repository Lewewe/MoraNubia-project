.class public final Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;
.super Ljava/lang/Object;
.source "ExtendableUseCaseConfigFactory.java"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfigFactory;


# instance fields
.field private final mDefaultProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/camera/core/impl/ConfigProvider<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->mDefaultProviders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/Class;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->mDefaultProviders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/ConfigProvider;

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0}, Landroidx/camera/core/impl/ConfigProvider;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/UseCaseConfig;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public installDefaultProvider(Ljava/lang/Class;Landroidx/camera/core/impl/ConfigProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Landroidx/camera/core/impl/Config;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Landroidx/camera/core/impl/ConfigProvider<",
            "TC;>;)V"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->mDefaultProviders:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
