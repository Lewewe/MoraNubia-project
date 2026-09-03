.class public Lcom/zte/aigc/form/PageForm;
.super Lcom/zte/aigc/form/APIForm;
.source "PageForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aigc/form/PageForm$OrderTypeEnum;
    }
.end annotation


# instance fields
.field private orderType:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

.field private pageNum:I

.field private pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/zte/aigc/form/APIForm;-><init>()V

    .line 4
    sget-object v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->DESC:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    iput-object v0, p0, Lcom/zte/aigc/form/PageForm;->orderType:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    return-void
.end method


# virtual methods
.method public getOrderType()Lcom/zte/aigc/form/PageForm$OrderTypeEnum;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/zte/aigc/form/PageForm;->orderType:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    return-object p0
.end method

.method public getPageNum()I
    .locals 0

    .line 17
    iget p0, p0, Lcom/zte/aigc/form/PageForm;->pageNum:I

    return p0
.end method

.method public getPageSize()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/aigc/form/PageForm;->pageSize:I

    return p0
.end method

.method public setOrderType(Lcom/zte/aigc/form/PageForm$OrderTypeEnum;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aigc/form/PageForm;->orderType:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/zte/aigc/form/PageForm;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/zte/aigc/form/PageForm;->pageSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PageForm{orderType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aigc/form/PageForm;->orderType:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aigc/form/PageForm;->pageNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/zte/aigc/form/PageForm;->pageSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
