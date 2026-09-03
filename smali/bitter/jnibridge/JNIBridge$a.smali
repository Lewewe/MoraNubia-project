.class Lbitter/jnibridge/JNIBridge$a;
.super Ljava/lang/Object;
.source "JNIBridge.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbitter/jnibridge/JNIBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:J

.field private c:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lbitter/jnibridge/JNIBridge$a;->a:Ljava/lang/Object;

    .line 39
    iput-wide p1, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    const/4 p1, 0x0

    .line 42
    :try_start_0
    const-class p2, Ljava/lang/invoke/MethodHandles$Lookup;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    iput-object p2, p0, Lbitter/jnibridge/JNIBridge$a;->c:Ljava/lang/reflect/Constructor;

    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    iput-object p1, p0, Lbitter/jnibridge/JNIBridge$a;->c:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 45
    :catch_1
    iput-object p1, p0, Lbitter/jnibridge/JNIBridge$a;->c:Ljava/lang/reflect/Constructor;

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 53
    new-array p3, p3, [Ljava/lang/Object;

    .line 56
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    iget-object p0, p0, Lbitter/jnibridge/JNIBridge$a;->c:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 95
    iget-object v0, p0, Lbitter/jnibridge/JNIBridge$a;->a:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 96
    :try_start_0
    iput-wide v1, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final finalize()V
    .locals 5

    .line 87
    iget-object v0, p0, Lbitter/jnibridge/JNIBridge$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-wide v1, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    .line 89
    invoke-static {v1, v2}, Lbitter/jnibridge/JNIBridge;->delete(J)V

    .line 91
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lbitter/jnibridge/JNIBridge$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-wide v1, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3, p2, p3}, Lbitter/jnibridge/JNIBridge;->invoke(JLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception v1

    .line 69
    iget-object v2, p0, Lbitter/jnibridge/JNIBridge$a;->c:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lbitter/jnibridge/JNIBridge$a;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 78
    :cond_1
    throw v1

    .line 70
    :cond_2
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "JNIBridge error: Java interface default methods are only supported since Android Oreo"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    throw v1

    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
