.class public Lcom/zte/aigc/form/charge/OrderForm;
.super Lcom/zte/aigc/form/APIForm;
.source "OrderForm.java"


# instance fields
.field private chargePlanId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/zte/aigc/form/APIForm;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargePlanId()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/zte/aigc/form/charge/OrderForm;->chargePlanId:I

    return p0
.end method

.method public setChargePlanId(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/zte/aigc/form/charge/OrderForm;->chargePlanId:I

    return-void
.end method
