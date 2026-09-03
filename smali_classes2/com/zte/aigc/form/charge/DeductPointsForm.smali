.class public Lcom/zte/aigc/form/charge/DeductPointsForm;
.super Lcom/zte/aigc/form/APIForm;
.source "DeductPointsForm.java"


# instance fields
.field private aigcModel:Ljava/lang/String;

.field private deductAppFuncName:Ljava/lang/String;

.field private deductAppFuncNameAlias:Ljava/lang/String;

.field private deductAppFuncSession:Ljava/lang/String;

.field private deductAppName:Ljava/lang/String;

.field private deductAppPkg:Ljava/lang/String;

.field private deductTime:Ljava/lang/String;

.field private deductTimes:I

.field private deductType:Lcom/zte/aigc/common/DeductTypeEnum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/zte/aigc/form/APIForm;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductTimes:I

    .line 15
    sget-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/DeductTypeEnum;

    iput-object v0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductType:Lcom/zte/aigc/common/DeductTypeEnum;

    return-void
.end method


# virtual methods
.method public getAigcModel()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->aigcModel:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductAppFuncName()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppFuncName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductAppFuncNameAlias()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppFuncNameAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductAppFuncSession()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppFuncSession:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductAppName()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductAppPkg()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductTime()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductTime:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductTimes()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductTimes:I

    return p0
.end method

.method public getDeductType()Lcom/zte/aigc/common/DeductTypeEnum;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductType:Lcom/zte/aigc/common/DeductTypeEnum;

    return-object p0
.end method

.method public setAigcModel(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->aigcModel:Ljava/lang/String;

    return-void
.end method

.method public setDeductAppFuncName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppFuncName:Ljava/lang/String;

    return-void
.end method

.method public setDeductAppFuncNameAlias(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppFuncNameAlias:Ljava/lang/String;

    return-void
.end method

.method public setDeductAppFuncSession(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppFuncSession:Ljava/lang/String;

    return-void
.end method

.method public setDeductAppName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppName:Ljava/lang/String;

    return-void
.end method

.method public setDeductAppPkg(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductAppPkg:Ljava/lang/String;

    return-void
.end method

.method public setDeductTime(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductTime:Ljava/lang/String;

    return-void
.end method

.method public setDeductTimes(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductTimes:I

    return-void
.end method

.method public setDeductType(Lcom/zte/aigc/common/DeductTypeEnum;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/zte/aigc/form/charge/DeductPointsForm;->deductType:Lcom/zte/aigc/common/DeductTypeEnum;

    return-void
.end method
