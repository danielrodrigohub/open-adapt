.class public interface abstract Lu2/a$c;
.super Ljava/lang/Object;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final a:Lu2/a$c$a;

.field public static final b:Lu2/a$c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu2/a$c$a;

    invoke-direct {v0}, Lu2/a$c$a;-><init>()V

    sput-object v0, Lu2/a$c;->a:Lu2/a$c$a;

    .line 2
    sput-object v0, Lu2/a$c;->b:Lu2/a$c$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
