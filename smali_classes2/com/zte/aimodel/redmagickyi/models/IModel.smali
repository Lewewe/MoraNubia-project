.class public abstract Lcom/zte/aimodel/redmagickyi/models/IModel;
.super Ljava/lang/Object;
.source "IModel.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected modelName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/IModel;->modelName:Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/IModel;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract clearHistory()V
.end method

.method public getModelName()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/IModel;->modelName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract inference(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
.end method
