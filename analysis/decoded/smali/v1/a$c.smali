.class public final Lv1/a$c;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lv1/a$c;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv1/a$c;

    new-instance v1, Lv1/a$c$a;

    invoke-direct {v1}, Lv1/a$c$a;-><init>()V

    invoke-direct {v0, v1}, Lv1/a$c;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lv1/a$c;->b:Lv1/a$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lv1/a;->k:Z

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lv1/a$c;->a:Ljava/lang/Throwable;

    return-void
.end method
