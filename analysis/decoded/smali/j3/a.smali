.class public final Lj3/a;
.super Ljava/lang/Object;
.source "NoTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lj3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/a<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Lj3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj3/a;

    invoke-direct {v0}, Lj3/a;-><init>()V

    sput-object v0, Lj3/a;->a:Lj3/a;

    .line 2
    new-instance v0, Lj3/a$a;

    invoke-direct {v0}, Lj3/a$a;-><init>()V

    sput-object v0, Lj3/a;->b:Lj3/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
