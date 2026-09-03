.class Lcn/nubia/redmagickyi/util/Counter$1;
.super Ljava/lang/Object;
.source "Counter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field passTime:Ljava/lang/Long;

.field startTime:Ljava/lang/Long;

.field final synthetic this$0:Lcn/nubia/redmagickyi/util/Counter;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/Counter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$000(Lcn/nubia/redmagickyi/util/Counter;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 112
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/Counter$1;->startTime:Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->startTime:Ljava/lang/Long;

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Counter;->access$100(Lcn/nubia/redmagickyi/util/Counter;)F

    move-result v0

    invoke-static {p0, v0, v3}, Lcn/nubia/redmagickyi/util/Counter;->access$200(Lcn/nubia/redmagickyi/util/Counter;FZ)V

    goto/16 :goto_2

    .line 117
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->passTime:Ljava/lang/Long;

    .line 118
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$300(Lcn/nubia/redmagickyi/util/Counter;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->passTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->passTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$400(Lcn/nubia/redmagickyi/util/Counter;)J

    move-result-wide v6

    rem-long/2addr v4, v6

    .line 123
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$400(Lcn/nubia/redmagickyi/util/Counter;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    const-wide/16 v6, 0x0

    if-ltz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$500(Lcn/nubia/redmagickyi/util/Counter;)J

    move-result-wide v4

    cmp-long v0, v4, v6

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$600(Lcn/nubia/redmagickyi/util/Counter;)F

    move-result v4

    invoke-static {v0, v4, v3}, Lcn/nubia/redmagickyi/util/Counter;->access$200(Lcn/nubia/redmagickyi/util/Counter;FZ)V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$500(Lcn/nubia/redmagickyi/util/Counter;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$600(Lcn/nubia/redmagickyi/util/Counter;)F

    move-result v3

    invoke-static {v0, v3, v2}, Lcn/nubia/redmagickyi/util/Counter;->access$200(Lcn/nubia/redmagickyi/util/Counter;FZ)V

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$600(Lcn/nubia/redmagickyi/util/Counter;)F

    move-result v3

    invoke-static {v0, v3, v2}, Lcn/nubia/redmagickyi/util/Counter;->access$200(Lcn/nubia/redmagickyi/util/Counter;FZ)V

    .line 135
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$300(Lcn/nubia/redmagickyi/util/Counter;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 136
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    goto :goto_2

    .line 139
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$100(Lcn/nubia/redmagickyi/util/Counter;)F

    move-result v0

    .line 140
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Counter;->access$600(Lcn/nubia/redmagickyi/util/Counter;)F

    move-result v1

    .line 141
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Counter;->access$300(Lcn/nubia/redmagickyi/util/Counter;)I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_4

    .line 142
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/Counter$1;->passTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Counter;->access$400(Lcn/nubia/redmagickyi/util/Counter;)J

    move-result-wide v10

    div-long/2addr v8, v10

    const-wide/16 v10, 0x2

    rem-long/2addr v8, v10

    cmp-long v2, v8, v6

    if-eqz v2, :cond_4

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$600(Lcn/nubia/redmagickyi/util/Counter;)F

    move-result v0

    .line 144
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Counter;->access$100(Lcn/nubia/redmagickyi/util/Counter;)F

    move-result v1

    .line 147
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Counter$1;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    sub-float/2addr v1, v0

    long-to-float v2, v4

    mul-float/2addr v1, v2

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Counter;->access$400(Lcn/nubia/redmagickyi/util/Counter;)J

    move-result-wide v4

    long-to-float v2, v4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/Counter;->access$700(Lcn/nubia/redmagickyi/util/Counter;F)F

    move-result v0

    invoke-static {p0, v0, v3}, Lcn/nubia/redmagickyi/util/Counter;->access$200(Lcn/nubia/redmagickyi/util/Counter;FZ)V

    :cond_5
    :goto_2
    return-void
.end method
