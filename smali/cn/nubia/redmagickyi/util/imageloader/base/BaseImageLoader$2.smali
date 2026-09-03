.class Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$2;
.super Ljava/lang/Object;
.source "BaseImageLoader.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->getCachedFile(Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;

.field final synthetic val$shouldBegin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$2;->this$0:Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$2;->val$shouldBegin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$2;->val$shouldBegin:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".tmp"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
