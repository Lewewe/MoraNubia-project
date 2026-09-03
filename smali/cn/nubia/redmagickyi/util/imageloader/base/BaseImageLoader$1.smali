.class Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$1;
.super Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;
.source "BaseImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->getLoader()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;Landroid/content/Context;Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;)V

    return-void
.end method


# virtual methods
.method public getDefaultOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method
