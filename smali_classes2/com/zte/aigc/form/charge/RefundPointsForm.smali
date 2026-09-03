.class public Lcom/zte/aigc/form/charge/RefundPointsForm;
.super Lcom/zte/aigc/form/APIForm;
.source "RefundPointsForm.java"


# instance fields
.field private changeNo:Ljava/lang/String;

.field private refundReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/zte/aigc/form/APIForm;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeNo()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/zte/aigc/form/charge/RefundPointsForm;->changeNo:Ljava/lang/String;

    return-object p0
.end method

.method public getRefundReason()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/aigc/form/charge/RefundPointsForm;->refundReason:Ljava/lang/String;

    return-object p0
.end method

.method public setChangeNo(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aigc/form/charge/RefundPointsForm;->changeNo:Ljava/lang/String;

    return-void
.end method

.method public setRefundReason(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aigc/form/charge/RefundPointsForm;->refundReason:Ljava/lang/String;

    return-void
.end method
