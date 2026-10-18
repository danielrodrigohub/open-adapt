.class public abstract Lge/a;
.super Ljava/lang/Object;
.source "AndroidComponents.java"


# static fields
.field public static final c:Lge/a;


# instance fields
.field public final a:Lfe/g;

.field public final b:Lm6/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Ld3/e;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lge/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 4
    :catchall_0
    :cond_0
    sput-object v1, Lge/a;->c:Lge/a;

    return-void
.end method

.method public constructor <init>(Lfe/g;Lm6/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lge/a;->a:Lfe/g;

    .line 3
    iput-object p2, p0, Lge/a;->b:Lm6/e;

    return-void
.end method
