.class Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$2;
.super Ljava/lang/Object;
.source "BaseMultipartUploadTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->completeMultipartUploadResult()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alibaba/sdk/android/oss/model/PartETag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$2;->this$0:Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alibaba/sdk/android/oss/model/PartETag;Lcom/alibaba/sdk/android/oss/model/PartETag;)I
    .locals 1

    .line 312
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result p0

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result p0

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result p1

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 309
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PartETag;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$2;->compare(Lcom/alibaba/sdk/android/oss/model/PartETag;Lcom/alibaba/sdk/android/oss/model/PartETag;)I

    move-result p0

    return p0
.end method
