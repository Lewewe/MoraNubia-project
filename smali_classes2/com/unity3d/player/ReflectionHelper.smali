.class final Lcom/unity3d/player/ReflectionHelper;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/ReflectionHelper$a;,
        Lcom/unity3d/player/ReflectionHelper$b;
    }
.end annotation


# static fields
.field protected static LOG:Z = false

.field protected static final LOGV:Z = false

.field private static a:[Lcom/unity3d/player/ReflectionHelper$a;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1000

    .line 23
    new-array v0, v0, [Lcom/unity3d/player/ReflectionHelper$a;

    sput-object v0, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    const-wide/16 v0, 0x0

    .line 24
    sput-wide v0, Lcom/unity3d/player/ReflectionHelper;->b:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 1

    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 185
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    .line 194
    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_2

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :catch_1
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F
    .locals 6

    .line 206
    array-length v0, p2

    if-nez v0, :cond_0

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    .line 208
    :cond_1
    array-length v1, p1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 214
    array-length v2, p1

    move v3, v1

    move v1, v0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 217
    aget-object v4, p1, v0

    add-int/lit8 v5, v1, 0x1

    .line 218
    aget-object v1, p2, v1

    invoke-static {v4, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v1

    mul-float/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v3

    .line 222
    :cond_4
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result p0

    mul-float/2addr v1, p0

    return v1
.end method

.method private static a(Ljava/lang/String;[I)Ljava/lang/Class;
    .locals 3

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 248
    aget v1, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 249
    aget v1, p1, v0

    add-int/lit8 v2, v1, 0x1

    .line 251
    aput v2, p1, v0

    .line 253
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x4c

    if-ne v1, v2, :cond_2

    const/16 v1, 0x3b

    .line 258
    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    .line 259
    aget v2, p1, v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    .line 260
    aput v1, p1, v0

    const/16 p1, 0x2f

    const/16 v0, 0x2e

    .line 261
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 264
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_3

    .line 271
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_3
    const/16 v2, 0x49

    if-ne v1, v2, :cond_4

    .line 275
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_4
    const/16 v2, 0x46

    if-ne v1, v2, :cond_5

    .line 279
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_5
    const/16 v2, 0x56

    if-ne v1, v2, :cond_6

    .line 283
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_6
    const/16 v2, 0x42

    if-ne v1, v2, :cond_7

    .line 287
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_7
    const/16 v2, 0x43

    if-ne v1, v2, :cond_8

    .line 291
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_8
    const/16 v2, 0x53

    if-ne v1, v2, :cond_9

    .line 295
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_9
    const/16 v2, 0x4a

    if-ne v1, v2, :cond_a

    .line 299
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_a
    const/16 v2, 0x44

    if-ne v1, v2, :cond_b

    .line 303
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_b
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_c

    .line 307
    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;[I)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 310
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "! parseType; "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not known!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :catch_0
    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V
    .locals 3

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v0

    .line 40
    :try_start_0
    iput-object p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    .line 41
    sget-object p1, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    invoke-virtual {p0}, Lcom/unity3d/player/ReflectionHelper$a;->hashCode()I

    move-result v1

    sget-object v2, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aput-object p0, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Lcom/unity3d/player/ReflectionHelper$a;)Z
    .locals 5

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    invoke-virtual {p0}, Lcom/unity3d/player/ReflectionHelper$a;->hashCode()I

    move-result v2

    sget-object v3, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 31
    invoke-virtual {p0, v1}, Lcom/unity3d/player/ReflectionHelper$a;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 32
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 34
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    iput-object v1, p0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/Class;
    .locals 5

    const/4 v0, 0x0

    .line 227
    filled-new-array {v0}, [I

    move-result-object v1

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    :goto_0
    aget v3, v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-static {p0, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;[I)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Class;

    .line 239
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    add-int/lit8 v3, v0, 0x1

    .line 239
    aput-object v2, p0, v0

    move v0, v3

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static synthetic access$000()J
    .locals 2

    .line 20
    sget-wide v0, Lcom/unity3d/player/ReflectionHelper;->b:J

    return-wide v0
.end method

.method static synthetic access$100(J)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyLogJNIInvokeException(J)V

    return-void
.end method

.method static synthetic access$200(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyInvoke(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(J)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyFinalize(J)V

    return-void
.end method

.method protected static endUnityLaunch()V
    .locals 4

    .line 325
    sget-wide v0, Lcom/unity3d/player/ReflectionHelper;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/unity3d/player/ReflectionHelper;->b:J

    return-void
.end method

.method protected static getConstructorID(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 10

    .line 47
    new-instance v0, Lcom/unity3d/player/ReflectionHelper$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/unity3d/player/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, v0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Constructor;

    goto :goto_2

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    .line 56
    aget-object v7, v2, v6

    .line 58
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v8

    cmpl-float v9, v8, v5

    if-lez v9, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v8, v4

    if-nez v4, :cond_1

    move-object v4, v7

    goto :goto_1

    :cond_1
    move-object v4, v7

    move v5, v8

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    :cond_3
    :goto_1
    invoke-static {v0, v4}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V

    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_4

    return-object v0

    .line 71
    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<init>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in class "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getFieldID(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 12

    .line 119
    new-instance v0, Lcom/unity3d/player/ReflectionHelper$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, v0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Field;

    goto/16 :goto_4

    .line 122
    :cond_0
    invoke-static {p2}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-eqz p0, :cond_5

    .line 126
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v7, v6, :cond_3

    .line 129
    aget-object v9, v5, v7

    .line 131
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-ne p3, v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    move-object v11, v2

    check-cast v11, [Ljava/lang/Class;

    invoke-static {v10, v2, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v10

    cmpl-float v11, v10, v3

    if-lez v11, :cond_2

    cmpl-float v3, v10, v8

    move-object v4, v9

    if-nez v3, :cond_1

    move v3, v10

    goto :goto_2

    :cond_1
    move v3, v10

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    cmpl-float v5, v3, v8

    if-eqz v5, :cond_5

    .line 140
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_5

    const-class v5, Ljava/lang/Object;

    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 124
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 145
    :cond_5
    :goto_3
    invoke-static {v0, v4}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V

    move-object v0, v4

    :goto_4
    if-nez v0, :cond_7

    .line 149
    new-instance v0, Ljava/lang/NoSuchFieldError;

    if-eqz p3, :cond_6

    const-string p3, "static"

    goto :goto_5

    :cond_6
    const-string p3, "non-static"

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p3, p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "no %s field with name=\'%s\' signature=\'%s\' in class L%s;"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-object v0
.end method

.method protected static getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 4

    .line 157
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 159
    const-string v0, "boolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string p0, "Z"

    return-object p0

    .line 161
    :cond_0
    const-string v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string p0, "B"

    return-object p0

    .line 163
    :cond_1
    const-string v0, "char"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const-string p0, "C"

    return-object p0

    .line 165
    :cond_2
    const-string v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const-string p0, "D"

    return-object p0

    .line 167
    :cond_3
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    const-string p0, "F"

    return-object p0

    .line 169
    :cond_4
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    const-string p0, "I"

    return-object p0

    .line 171
    :cond_5
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    const-string p0, "J"

    return-object p0

    .line 174
    :cond_6
    const-string v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "S"

    :cond_7
    return-object p0

    .line 177
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected static getMethodID(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;
    .locals 11

    .line 80
    new-instance v0, Lcom/unity3d/player/ReflectionHelper$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v0, v0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    goto/16 :goto_4

    .line 83
    :cond_0
    invoke-static {p2}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p0, :cond_5

    .line 87
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v6, v5, :cond_3

    .line 90
    aget-object v8, v4, v6

    .line 92
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-ne p3, v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v9

    cmpl-float v10, v9, v3

    if-lez v10, :cond_2

    cmpl-float v2, v9, v7

    if-nez v2, :cond_1

    move-object v2, v8

    move v3, v9

    goto :goto_2

    :cond_1
    move-object v2, v8

    move v3, v9

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    cmpl-float v4, v3, v7

    if-eqz v4, :cond_5

    .line 101
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_5

    const-class v4, Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 85
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 106
    :cond_5
    :goto_3
    invoke-static {v0, v2}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V

    move-object v0, v2

    :goto_4
    if-nez v0, :cond_7

    .line 110
    new-instance v0, Ljava/lang/NoSuchMethodError;

    if-eqz p3, :cond_6

    const-string p3, "static"

    goto :goto_5

    :cond_6
    const-string p3, "non-static"

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p3, p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "no %s method with name=\'%s\' signature=\'%s\' in class L%s;"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-object v0
.end method

.method private static native nativeProxyFinalize(J)V
.end method

.method private static native nativeProxyInvoke(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private static native nativeProxyLogJNIInvokeException(J)V
.end method

.method protected static newProxyInstance(JLjava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 329
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/unity3d/player/ReflectionHelper;->newProxyInstance(J[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static newProxyInstance(J[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 337
    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/ReflectionHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/player/ReflectionHelper$1;-><init>(J)V

    invoke-static {v0, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static setNativeExceptionOnProxy(Ljava/lang/Object;JZ)V
    .locals 0

    .line 333
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    check-cast p0, Lcom/unity3d/player/ReflectionHelper$b;

    invoke-interface {p0, p1, p2, p3}, Lcom/unity3d/player/ReflectionHelper$b;->a(JZ)V

    return-void
.end method
