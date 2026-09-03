.class Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper$1;
.super Ljava/lang/Object;
.source "AiFunctionMetaDataMapper.java"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper;->values()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/UnaryOperator<",
        "Ljava/util/List<",
        "Lcom/zte/aifunctions/metadata/entry/MetaData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$metaDatas:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper$1;->val$metaDatas:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper$1;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper$1;->val$metaDatas:Ljava/util/List;

    return-object p0
.end method
