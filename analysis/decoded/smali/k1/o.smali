.class public interface abstract Lk1/o;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/o$b;
    }
.end annotation


# static fields
.field public static final a:Lk1/o$b$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field

.field public static final b:Lk1/o$b$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk1/o$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk1/o$b$c;-><init>(Lk1/o$a;)V

    sput-object v0, Lk1/o;->a:Lk1/o$b$c;

    .line 2
    new-instance v0, Lk1/o$b$b;

    invoke-direct {v0}, Lk1/o$b$b;-><init>()V

    sput-object v0, Lk1/o;->b:Lk1/o$b$b;

    return-void
.end method
