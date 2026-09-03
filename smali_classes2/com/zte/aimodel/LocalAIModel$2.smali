.class Lcom/zte/aimodel/LocalAIModel$2;
.super Ljava/lang/Object;
.source "LocalAIModel.java"

# interfaces
.implements Lcom/zte/aimodel/feature/IFeature$IGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/LocalAIModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aimodel/LocalAIModel;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/LocalAIModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/zte/aimodel/LocalAIModel$2;->this$0:Lcom/zte/aimodel/LocalAIModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAIModelSource()I
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/zte/aimodel/LocalAIModel$2;->this$0:Lcom/zte/aimodel/LocalAIModel;

    invoke-virtual {p0}, Lcom/zte/aimodel/LocalAIModel;->getSource()I

    move-result p0

    return p0
.end method

.method public getService()Lcom/zte/aimodel/IVendorAIModelService;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/zte/aimodel/LocalAIModel$2;->this$0:Lcom/zte/aimodel/LocalAIModel;

    invoke-static {p0}, Lcom/zte/aimodel/LocalAIModel;->access$100(Lcom/zte/aimodel/LocalAIModel;)Lcom/zte/aimodel/IVendorAIModelService;

    move-result-object p0

    return-object p0
.end method
