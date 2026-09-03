.class final enum Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;
.super Ljava/lang/Enum;
.source "OSSUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EscapedChar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

.field public static final enum AMP:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

.field public static final enum GT:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

.field public static final enum LT:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

.field public static final enum NEWLINE:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

.field public static final enum QUOT:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

.field public static final enum RETURN:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

.field public static final enum TAB:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;


# instance fields
.field private final escapedChar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 849
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    const/4 v1, 0x0

    const-string v2, "&#x000D;"

    const-string v3, "RETURN"

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->RETURN:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    .line 852
    new-instance v1, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    const/4 v2, 0x1

    const-string v3, "&#x000A;"

    const-string v4, "NEWLINE"

    invoke-direct {v1, v4, v2, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->NEWLINE:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    .line 855
    new-instance v2, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    const/4 v3, 0x2

    const-string v4, "&#x0009;"

    const-string v5, "TAB"

    invoke-direct {v2, v5, v3, v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->TAB:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    .line 858
    new-instance v3, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    const/4 v4, 0x3

    const-string v5, "&quot;"

    const-string v6, "QUOT"

    invoke-direct {v3, v6, v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->QUOT:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    .line 861
    new-instance v4, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    const/4 v5, 0x4

    const-string v6, "&amp;"

    const-string v7, "AMP"

    invoke-direct {v4, v7, v5, v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->AMP:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    .line 864
    new-instance v5, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    const/4 v6, 0x5

    const-string v7, "&lt;"

    const-string v8, "LT"

    invoke-direct {v5, v8, v6, v7}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->LT:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    .line 867
    new-instance v6, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    const/4 v7, 0x6

    const-string v8, "&gt;"

    const-string v9, "GT"

    invoke-direct {v6, v9, v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->GT:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    .line 847
    filled-new-array/range {v0 .. v6}, [Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->$VALUES:[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 871
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 872
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->escapedChar:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;
    .locals 1

    .line 847
    const-class v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;
    .locals 1

    .line 847
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->$VALUES:[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$EscapedChar;->escapedChar:Ljava/lang/String;

    return-object p0
.end method
