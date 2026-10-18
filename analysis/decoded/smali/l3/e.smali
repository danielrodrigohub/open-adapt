.class public final Ll3/e;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field public static final a:Ll3/e$a;

.field public static final b:Ll3/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll3/e$a;

    invoke-direct {v0}, Ll3/e$a;-><init>()V

    sput-object v0, Ll3/e;->a:Ll3/e$a;

    .line 2
    new-instance v0, Ll3/e$b;

    invoke-direct {v0}, Ll3/e$b;-><init>()V

    sput-object v0, Ll3/e;->b:Ll3/e$b;

    return-void
.end method
