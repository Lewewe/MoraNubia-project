.class public final enum Lcom/zte/aigc/form/PageForm$OrderTypeEnum;
.super Ljava/lang/Enum;
.source "PageForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aigc/form/PageForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrderTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aigc/form/PageForm$OrderTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

.field public static final enum ASC:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

.field public static final enum DESC:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aigc/form/PageForm$OrderTypeEnum;
    .locals 2

    .line 41
    sget-object v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->ASC:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    sget-object v1, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->DESC:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    filled-new-array {v0, v1}, [Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    const-string v1, "ASC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->ASC:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    .line 43
    new-instance v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    const-string v1, "DESC"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->DESC:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    .line 41
    invoke-static {}, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->$values()[Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->$VALUES:[Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->value:I

    .line 50
    iput-object p4, p0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/zte/aigc/form/PageForm$OrderTypeEnum;
    .locals 3

    .line 62
    sget-object v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->ASC:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 64
    :cond_0
    sget-object v1, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->DESC:Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    iget-object v2, v1, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aigc/form/PageForm$OrderTypeEnum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    const-class v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/zte/aigc/form/PageForm$OrderTypeEnum;
    .locals 1

    .line 41
    sget-object v0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->$VALUES:[Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    invoke-virtual {v0}, [Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aigc/form/PageForm$OrderTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/zte/aigc/form/PageForm$OrderTypeEnum;->value:I

    return p0
.end method
