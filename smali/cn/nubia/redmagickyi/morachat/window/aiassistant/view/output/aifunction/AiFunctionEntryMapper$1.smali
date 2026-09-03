.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper$1;
.super Ljava/lang/Object;
.source "AiFunctionEntryMapper.java"

# interfaces
.implements Lcom/zte/aifunctions/metadata/IDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 1

    .line 108
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->access$100()Lcom/zte/aifunctions/metadata/IDataListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 110
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->access$100()Lcom/zte/aifunctions/metadata/IDataListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aifunctions/metadata/IDataListener;->onDataSetChanged()V

    :cond_0
    return-void
.end method
