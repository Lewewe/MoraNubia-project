.class Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;
.super Lokio/ForwardingSource;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressSource"
.end annotation


# instance fields
.field currentProgress:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;Lokio/Source;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

    .line 53
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    .line 48
    iput-wide p1, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 59
    iget-object p3, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

    invoke-static {p3}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->access$000(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Lokhttp3/ResponseBody;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-nez p3, :cond_0

    .line 61
    iput-wide v0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->totalBytesRead:J

    goto :goto_0

    .line 63
    :cond_0
    iget-wide v2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->totalBytesRead:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->totalBytesRead:J

    .line 65
    :goto_0
    iget-wide v2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->totalBytesRead:J

    long-to-float p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p3, v2

    long-to-float v2, v0

    div-float/2addr p3, v2

    float-to-int p3, p3

    .line 66
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->access$100(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->access$100(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget v2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->currentProgress:I

    if-eq p3, v2, :cond_2

    .line 67
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->access$100(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    if-eqz v3, :cond_1

    .line 69
    iget-object v4, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->access$200(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x63

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v6, 0x64

    invoke-interface {v3, v4, v5, v6}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;->onProgressUpdate(Ljava/lang/String;II)V

    goto :goto_1

    .line 73
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->access$100(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->totalBytesRead:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->access$100(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->this$0:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->access$102(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;Ljava/util/List;)Ljava/util/List;

    .line 78
    :cond_3
    iput p3, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;->currentProgress:I

    return-wide p1
.end method
