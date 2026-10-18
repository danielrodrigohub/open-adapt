.class public abstract Lm7/f0;
.super Ljava/lang/Object;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/f0$b;,
        Lm7/f0$a;
    }
.end annotation


# static fields
.field public static final a:Lm7/f0$a;

.field public static final b:Lm7/f0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm7/f0$a;

    invoke-direct {v0}, Lm7/f0$a;-><init>()V

    sput-object v0, Lm7/f0;->a:Lm7/f0$a;

    .line 2
    new-instance v0, Lm7/f0$b;

    invoke-direct {v0}, Lm7/f0$b;-><init>()V

    sput-object v0, Lm7/f0;->b:Lm7/f0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
