.class final Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;
.super Ljava/lang/Object;
.source "LocalAIModelInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VendorAIRequest"
.end annotation


# instance fields
.field public arg2:Ljava/lang/Object;

.field public argument:Ljava/lang/Object;

.field public exception:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->exception:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->argument:Ljava/lang/Object;

    .line 238
    iput-object p2, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->arg2:Ljava/lang/Object;

    .line 239
    iput-object p3, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->exception:Ljava/lang/Object;

    return-void
.end method
